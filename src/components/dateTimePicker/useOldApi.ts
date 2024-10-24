// TODO: delete whole file in v8
import {useEffect} from 'react';
import {MomentPackage as moment} from '../../optionalDependencies';

export interface OldApiProps {
  /**
   * @deprecated
   * The date format for the text display
   */
  dateFormat?: string;
  /**
   * @deprecated
   * A callback function to format date
   */
  dateFormatter?: (date: Date) => string;
  /**
   * @deprecated
   * The time format for the text display
   */
  timeFormat?: string;
  /**
   * @deprecated
   * A callback function to format time
   */
  timeFormatter?: (date: Date) => string;
}

// This file will be deleted in the next major version,
// duplicating these here will make this less complicated
// than removing the duplication
type Mode = 'date' | 'time';

const useOldApi = (props: OldApiProps) => {
  const {dateFormat, dateFormatter, timeFormat, timeFormatter} = props;

  useEffect(() => {
    if (!moment && (dateFormat || timeFormat)) {
      console.error(`RNUILib DateTimePicker component with date/time format requires installing "moment" dependency`);
    }
  }, [dateFormat, timeFormat]);

  const getStringValue = (value: Date, mode: Mode) => {
    if (value) {
      switch (mode) {
        case 'date':
          return dateFormatter
            ? dateFormatter(value)
            : dateFormat && moment
              ? moment(value).format(dateFormat)
              : formatTimestamp(value).formattedDate;
        case 'time':
          return timeFormatter
            ? timeFormatter(value)
            : timeFormat && moment
              ? moment(value).format(timeFormat)
              : formatTimestamp(value).formattedTime;
      }
    }
  };

  return {getStringValue};
};

function formatTimestamp(timestamp: any) {
  const ts = typeof timestamp === 'string' ? Number(timestamp) : timestamp;
  const date = new Date(ts);
    
  if (isNaN(date.getTime())) {
    return { formattedDate: '', formattedTime: '' };
  }
  // const date = new Date(timestamp);
  
  const year = date.getFullYear();
  const month = String(date.getMonth() + 1).padStart(2, '0'); // 月份从0开始
  const day = String(date.getDate()).padStart(2, '0');
  
  const hours = String(date.getHours()).padStart(2, '0');
  const minutes = String(date.getMinutes()).padStart(2, '0');
  // const seconds = String(date.getSeconds()).padStart(2, '0');

  const formattedDate = `${year}/${month}/${day}`;
  const formattedTime = `${hours}:${minutes}`;

  return { formattedDate, formattedTime };
}

export default useOldApi;
